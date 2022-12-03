.class public Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;
.super Ljava/lang/Object;
.source "PostCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/PostCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewFrame"
.end annotation


# instance fields
.field public mBuffer:Ljava/nio/Buffer;

.field public mMode:I

.field public mOrientation:I

.field public mSize:Landroid/graphics/Point;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mBuffer:Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mMode:I

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mOrientation:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()Landroid/graphics/Point;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mMode:I

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mSize:Landroid/graphics/Point;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
