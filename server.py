#!/usr/bin/env python3
"""
Simple HTTP server to host the StreamDiffusion WebRTC application
This avoids CORS issues with the Livepeer iframe player
"""

import http.server
import socketserver
import webbrowser
import os
import sys

PORT = 8000

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # Add CORS headers to allow iframe embedding
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        super().end_headers()

def main():
    # Change to the directory containing the HTML file
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    
    # Check if index.html exists
    if not os.path.exists('index.html'):
        print("Error: index.html not found in current directory")
        sys.exit(1)
    
    # Create server
    with socketserver.TCPServer(("", PORT), MyHTTPRequestHandler) as httpd:
        print(f"🚀 Server running at http://localhost:{PORT}")
        print(f"📱 Open your browser and go to: http://localhost:{PORT}")
        print("🛑 Press Ctrl+C to stop the server")
        
        # Try to open browser automatically
        try:
            webbrowser.open(f'http://localhost:{PORT}')
        except:
            pass
        
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n🛑 Server stopped")
            httpd.shutdown()

if __name__ == "__main__":
    main()