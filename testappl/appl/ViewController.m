//
//  ViewController.m
//  appl
//
//  Created by Reuf Kicin on 10/22/16.
//  Copyright © 2016 Kicin. All rights reserved.
//

#import "ViewController.h"
#import "ContactsScreenViewController.h"
#import "CallScreenViewController.h"

@interface user()

@end

@implementation user

@synthesize username;
@synthesize pass;
@synthesize host;
@synthesize port;

- (id)init{
    if(self = [super init]){
        port = 5060;
    }
    return self;
}


@end


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
   // user *usr = [[user alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    
    passPolje.clearsOnBeginEditing = NO;
   NSUserDefaults *userdata = [NSUserDefaults standardUserDefaults];
    NSString *username = [userdata objectForKey:@"username"];
    NSString *pass = [userdata objectForKey:@"pass"];
    NSString *host = [userdata objectForKey:@"host"];
    NSString *port = [userdata objectForKey:@"port"];
    
    usernamePolje.text = username;
    passPolje.text = pass;
    hostPolje.text = host;
    portPolje.text = port;
    
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)zbir:(id)sender {
    
    
}

@synthesize usernamePolje;
@synthesize passPolje;
@synthesize hostPolje;
@synthesize portPolje;

- (IBAction)login:(id)sender {
    NSString *username = [usernamePolje text];
    NSString *pass = [passPolje text];
    NSString *host = [hostPolje text];
    NSString *port = [portPolje text];
    
    
    if([username isEqualToString:@"kicin"] && [pass isEqualToString:@"Adnanekiga1"]){
        
        
        NSUserDefaults *userdata = [NSUserDefaults standardUserDefaults];
    
    [userdata setObject:username forKey:@"username"];
    [userdata setObject:pass forKey:@"pass"];
    [userdata setObject:host forKey:@"host"];
    [userdata setObject:port forKey:@"port"];
    [userdata synchronize];
        [self performSegueWithIdentifier:@"LoginSegue" sender:self];
                                                    
        
        
    
        
    }
    else{
     _ErrorMsg.text = @"Wrong username or password!";
    }
   /*
   [[PJ sharedPJ] startPjsipAndRegisterOnServer:[host UTF8String] withUserName:[username UTF8String] andPassword:[pass UTF8String] callback:^(BOOL success){
        [self loginComplete:success];
    }];
    */
    
    
    
}

- (void)loginComplete:(BOOL)success{

}

@end
