.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;
.super Ljava/lang/Object;
.source "WatermarkEditorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;-><init>(Lcom/motorola/camera/service/WatermarkEditorService$1;)V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    return-void
.end method
