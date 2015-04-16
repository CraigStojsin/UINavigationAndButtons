//
//  ProfileViewController.m
//  UInavigationandButtons
//
//  Created by Craig Stojsin on 2015-04-15.
//  Copyright (c) 2015 CraigCode. All rights reserved.
//

#import "ProfileViewController.h"
#import "FeedViewController.h"
#import "FavouritesViewController.h"
@interface ProfileViewController ()


@end

@implementation ProfileViewController


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"circle.png"];
        
    }
    
    return self;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo2.jpg"]];
    
    imageView.contentMode = UIViewContentModeTop;
    imageView.frame = self.view.frame;
    
    [self.view addSubview:imageView];
    
    UIButton *feedButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    feedButton.frame = CGRectMake(30, 250, 220, 64);
    [feedButton setTitle:@"View Feed" forState:UIControlStateNormal];
    feedButton.imageView.image = [UIImage imageNamed:@"circle.png"];
    feedButton.frame = CGRectMake(15, 200, 200, 130);
    [self.view addSubview:feedButton];
    [feedButton addTarget:self action:@selector(showFeed:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}


-(void)showFeed: (UIButton*) sender {
    FeedViewController *feedLink = [[FeedViewController alloc]init];
    [self.navigationController pushViewController:feedLink animated:YES];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
