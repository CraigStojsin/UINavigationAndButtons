//
//  FeedViewController.m
//  UInavigationandButtons
//
//  Created by Craig Stojsin on 2015-04-15.
//  Copyright (c) 2015 CraigCode. All rights reserved.
//

#import "FeedViewController.h"
#import "FavouritesViewController.h"
#import "ProfileViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    if (self) {
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"square"];
        
    }
    
    return self;
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo1"]];
    
    imageView.contentMode = UIViewContentModeTop;
    imageView.frame = self.view.frame;
    
    [self.view addSubview:imageView];
    
    
    
    UIButton *favouritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favouritesButton.frame = CGRectMake(30, 250, 220, 64);
    [favouritesButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [favouritesButton setTitle:@"Clickhere" forState:UIControlStateHighlighted];
    favouritesButton.imageView.image = [UIImage imageNamed:@"square"];
    favouritesButton.frame = CGRectMake(15, 200, 200, 130);
    [self.view addSubview:favouritesButton];
    [favouritesButton addTarget:self action:@selector(showFavourites:) forControlEvents:UIControlEventTouchUpInside];
    
}




-(void)showFavourites: (UIButton*) sender {
    FavouritesViewController *favouritesLink = [[FavouritesViewController alloc]init];
    [self.navigationController pushViewController:favouritesLink animated:YES];
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


