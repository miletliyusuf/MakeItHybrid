import UIKit
import Foundation

public class MakeItHybrid:NSObject,UIWebViewDelegate {

	public var superView:UIView
	var webView = UIWebView()
	var loadingView = UIActivityIndicatorView()
	
	public override init() {
		superView = UIView()
	}
	
	public func makeHybridWithUrlString(urlString:NSString) {
		
		let url = NSURL(string: urlString as String)
		let requestObject = NSURLRequest(URL: url!)
		
		webView.delegate = self
		
		superView.addSubview(webView)
		webView.setTranslatesAutoresizingMaskIntoConstraints(false)
		let view:Dictionary = ["webView":webView]
		let hConst:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[webView]-0-|", options: NSLayoutFormatOptions(0), metrics: nil, views: view)
		let vConst:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[webView]-0-|", options: NSLayoutFormatOptions(0), metrics: nil, views: view)
		superView.addConstraints(hConst)
		superView.addConstraints(vConst)
		
		webView.loadRequest(requestObject)
	}
	//webView delegate methods
	public func webViewDidFinishLoad(webView: UIWebView) {
		loadingView.hidden = true
	}
	
	public func webViewDidStartLoad(webView: UIWebView) {
		loadingView.setTranslatesAutoresizingMaskIntoConstraints(false)
		loadingView.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
		superView.addSubview(loadingView)
		let view:Dictionary = ["loadingView":loadingView]
		let hConst:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[loadingView]-|", options: NSLayoutFormatOptions(0), metrics: nil, views: view)
		let vConst:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[loadingView]-|", options: NSLayoutFormatOptions(0), metrics: nil, views: view)
		superView.addConstraints(hConst)
		superView.addConstraints(vConst)
		loadingView.startAnimating()
	}
	
}