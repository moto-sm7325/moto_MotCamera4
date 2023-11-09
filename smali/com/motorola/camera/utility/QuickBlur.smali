.class public Lcom/motorola/camera/utility/QuickBlur;
.super Ljava/lang/Object;
.source "QuickBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/QuickBlur$Builder;
    }
.end annotation


# static fields
.field public static volatile singleton:Lcom/motorola/camera/utility/QuickBlur;


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;

.field public mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 2
    iput v0, p0, Lcom/motorola/camera/utility/QuickBlur;->mRadius:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/QuickBlur;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v8, v1, v2, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, v0

    .line 7
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 9
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 10
    invoke-static {p0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 11
    invoke-static {p0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 12
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    .line 13
    invoke-static {p0, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    .line 14
    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 15
    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 16
    invoke-virtual {v5, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 17
    invoke-virtual {v4, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 18
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 19
    invoke-virtual {v5}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 20
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 21
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static with(Landroid/content/Context;)Lcom/motorola/camera/utility/QuickBlur;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/motorola/camera/utility/QuickBlur;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/motorola/camera/utility/QuickBlur;

    invoke-direct {v1, p0}, Lcom/motorola/camera/utility/QuickBlur;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    return-object p0
.end method
