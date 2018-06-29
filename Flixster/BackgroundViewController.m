//
//  BackgroundViewController.m
//  Flixster
//
//  Created by Ginger Dudley on 6/28/18.
//  Copyright © 2018 Ginger Dudley. All rights reserved.
//

#import "BackgroundViewController.h"
#import "UIImageView+AFNetworking.h"

@interface BackgroundViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *posterImage;


@end

@implementation BackgroundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.movie[@"poster_path"];
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    [self.posterImage setImageWithURL:posterURL];
    
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
