.class public interface abstract Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;
.super Ljava/lang/Object;
.source "ExposureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExposureListener"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted()V
.end method

.method public abstract onExposureChange(Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;)V
.end method

.method public abstract onExposureFlashStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract onExposureLockChange(Z)V
.end method

.method public abstract onExposureModeChange(II)V
.end method

.method public abstract onExposureStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method
