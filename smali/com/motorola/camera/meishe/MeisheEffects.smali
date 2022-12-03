.class public Lcom/motorola/camera/meishe/MeisheEffects;
.super Ljava/lang/Object;
.source "MeisheEffects.java"


# static fields
.field public static mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mLutFiles:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;

    :try_start_0
    const-string v0, "meishe-nv-effects-thumbnails"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MeisheEffects"

    const-string v2, "error loading meishe-nv-effects-thumbnails.so"

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deinit()V
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_denit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init()Z
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_init()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synchronized native native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method

.method public static synchronized native native_clear_meishe_effect_thumbnails()V
.end method

.method public static synchronized native native_configure_bitmap_container(Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;I)V
.end method

.method public static synchronized native native_denit()V
.end method

.method public static synchronized native native_init()Z
.end method

.method public static synchronized native native_process_thumbnails(IIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)Z
.end method

.method public static declared-synchronized processThumbnails(Landroid/media/Image;II)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    aget-object v5, v0, v4

    .line 4
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v6, v0, v4

    .line 5
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aget-object v4, v0, v4

    .line 6
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v4, 0x1

    aget-object v8, v0, v4

    .line 7
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    aget-object v9, v0, v4

    .line 8
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    aget-object v4, v0, v4

    .line 9
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v4, 0x2

    aget-object v11, v0, v4

    .line 10
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    aget-object v12, v0, v4

    .line 11
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    aget-object v0, v0, v4

    .line 12
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v0

    move/from16 v13, p1

    move/from16 v14, p2

    .line 13
    invoke-static/range {v2 .. v14}, Lcom/motorola/camera/meishe/MeisheEffects;->native_process_thumbnails(IIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sortEffects([Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v2, v2

    const-string v3, "MeisheEffects"

    if-eq v1, v2, :cond_1

    const-string/jumbo p0, "sortEffects: wrong number of effects in order array"

    .line 2
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v4, v2

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 5
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sortEffects: effect "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in order list"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_3
    sput-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method
