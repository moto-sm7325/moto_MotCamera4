.class public Lcom/motorola/camera/ui/SettingSoundPlayer;
.super Ljava/lang/Object;
.source "SettingSoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;,
        Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
    }
.end annotation


# static fields
.field public static mSoundExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public mLoaded:I

.field public mSoundMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSoundPool:[Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/SettingSoundPlayer$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/media/SoundPool;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    .line 3
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    return-void
.end method

.method public static getNotificationSoundAttributes()Landroid/media/AudioAttributes;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
