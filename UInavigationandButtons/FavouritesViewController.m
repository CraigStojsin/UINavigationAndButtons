//
//  FavouritesViewController.m
//  UInavigationandButtons
//
//  Created by Craig Stojsin on 2015-04-15.
//  Copyright (c) 2015 CraigCode. All rights reserved.
//

#import "FavouritesViewController.h"
#import "ProfileViewController.h"
#import "FeedViewController.h"
@interface FavouritesViewController ()

@end

@implementation FavouritesViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    if (self) {
        self.title = @"Favourites";
        self.tabBarItem.image = [UIImage imageNamed:@"star-gold"];
        
    }
    
    return self;
    

}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo"]];
   
    imageView.contentMode = UIViewContentModeTop;
    imageView.frame = self.view.frame;
    
    [self.view addSubview:imageView];
    


    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.frame = CGRectMake(30, 250, 220, 64);
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [profileButton setTitle:@"Clickhere" forState:UIControlStateHighlighted];
    profileButton.imageView.image = [UIImage imageNamed:@"star.jpg"];
    profileButton.frame = CGRectMake(15, 200, 200, 130);
    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
    
    

}




-(void)showProfile: (UIButton*) sender {
    ProfileViewController *profileLink = [[ProfileViewController alloc]init];
    [self.navigationController pushViewController:profileLink animated:YES];
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
