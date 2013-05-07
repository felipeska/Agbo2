//
//  FCBWikiViewController.m
//  Agbo2
//
//  Created by WTFCALDERON on 7/05/13.
//  Copyright (c) 2013 WideTech. All rights reserved.
//

#import "FCBWikiViewController.h"

@interface FCBWikiViewController ()

@end

@implementation FCBWikiViewController



-(id) initWithModel: (FCBCharacterModel *) aModel{
    
    if(self = [super initWithNibName:nil bundle:nil]){
        
        _model = aModel;
        self.title = @"Wiki";
    }
    
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.wbrouser loadRequest:[NSURLRequest requestWithURL:self.model.wikiPage]];
    self.wbrouser.delegate = self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma delegates

- (void) webViewDidFinishLoad:(UIWebView *)webView{
    
    [self.activityView stopAnimating];
}

- (BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    if((navigationType == UIWebViewNavigationTypeLinkClicked) ||
       (navigationType  == UIWebViewNavigationTypeFormSubmitted)){
        
        return NO;
    }else{
        return YES;
    }
}



@end
