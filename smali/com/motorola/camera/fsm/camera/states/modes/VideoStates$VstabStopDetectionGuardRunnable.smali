.class public Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;
.super Ljava/lang/Object;
.source "VideoStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VstabStopDetectionGuardRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final mExpected:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;->mExpected:Z

    return-void
.end method


# virtual methods
.method public canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const/4 p2, 0x0

    const-string v0, "ENABLE_VSTAB_STOP_DETECTION"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 5
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VstabStopDetectionGuardRunnable;->mExpected:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ne p0, p1, :cond_1

    move p2, v0

    :cond_1
    return p2
.end method
