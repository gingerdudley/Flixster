//
//  VideoViewController.m
//  Flixster
//
//  Created by Ginger Dudley on 6/28/18.
//  Copyright © 2018 Ginger Dudley. All rights reserved.
//

#import "VideoViewController.h"
#import "UIImageView+AFNetworking.h"

@interface VideoViewController ()

//@property (weak, nonatomic) IBOutlet WKWebView *videoWebView;
@property (weak, nonatomic) IBOutlet UIImageView *backdropImage;
@property (weak, nonatomic) IBOutlet UILabel *releaseDate;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *backdropURLString  = self.movie[@"backdrop_path"];
    NSString *fullBackdropURLString = [baseURLString stringByAppendingString:backdropURLString];
    
    NSURL *backdropURL = [NSURL URLWithString:fullBackdropURLString];
    [self.backdropImage setImageWithURL:backdropURL];
    
    
    self.releaseDate.text = self.movie[@"release_date"];
    [self.releaseDate sizeToFit];
    
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
