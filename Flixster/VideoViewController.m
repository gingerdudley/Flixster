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
@property (weak, nonatomic) IBOutlet UILabel *popularityVote;
@property (weak, nonatomic) IBOutlet UIView *redFaceView;
@property (weak, nonatomic) IBOutlet UIView *greenFaceView;
@property (weak, nonatomic) IBOutlet UIView *yellowFaceView;

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
    
    /*self.popularityVote.text = self.movie[@"vote_average"];
    [self.popularityVote sizeToFit];*/
    
    double averageVote = [self.movie[@"vote_average"] doubleValue];
    self.popularityVote.text = [[NSString stringWithFormat:@"%.1f", averageVote] stringByAppendingString:@"/ 10"];
    [self.popularityVote sizeToFit];
    
    
    //playing with the image showing up
    //UIView
    if(averageVote < 4.5){
        self.redFaceView.alpha = 1;
        self.yellowFaceView.alpha = 0;
        self.greenFaceView.alpha = 0;
    }
    else if(averageVote < 7.5){
        self.redFaceView.alpha = 0;
        self.yellowFaceView.alpha = 1;
        self.greenFaceView.alpha = 0;
        
    }
    else{
        self.redFaceView.alpha = 0;
        self.yellowFaceView.alpha = 0;
        self.greenFaceView.alpha = 1;
        
    }
    
    
    
    //NSLog(@"%@", [self.movie[@"vote_average"] class]);
    
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
