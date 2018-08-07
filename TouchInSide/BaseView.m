//
//  BaseView.m
//  TouchInSide
//
//  Created by xinyu.wu on 16/9/1.
//  Copyright © 2016年 desire.wu. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

//-(id)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{
//    if ([self pointInside:point withEvent:event]) {
//        
//        UIView *hitView = nil;
//        for (UIView *subView in self.subviews) {
//            UIView *subHitView = [subView hitTest:point withEvent:event];
//            if (subHitView) {
//                hitView = subHitView;
//                break;
//            }
//        }
//        
//        if (hitView) {
//            return hitView;
//        }else{
//            return self;
//        }
//        
//    }else{
//        return self;
//    }
//}
//
//
//-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
//{
//    //NSLog(@"%s",__FUNCTION__);
//    if (point.y > CGRectGetHeight(self.frame)/2.0) {
//        return YES;
//    }else{
//        return NO;
//    }
//}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"%s",__FUNCTION__);
//}

@end


@implementation BaseView1

-(id)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    /*
     *会自动调用pointInSide函数
     *
     *如果返回Yes，则遍历subView，调用subView的hitTest方法，知道找到hitView。
     *
     *如果返回NO，则返回self。
     */
    if ([self pointInside:point withEvent:event]) {
        
        UIView *hitView = nil;
        NSArray *subViews = self.subviews;
        //遍历subView，从subView的最上层开始遍历,也就是数组中的最后一个元素开始。
        for (NSInteger i = subViews.count-1; i >0 ;i--) {
            UIView *subView = [subViews objectAtIndex:i];
            UIView *subHitView = [subView hitTest:point withEvent:event];
            if (subHitView) {
                hitView = subHitView;
                break;
            }
        }
        
        if (hitView) {
            return hitView;
        }else{
            return nil;
        }
        
    }else{
        return self;
    }
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    //NSLog(@"%s",__FUNCTION__);
    if (point.x > CGRectGetHeight(self.frame)/2.0) {
        return YES;
    }else{
        return NO;
    }
}


@end