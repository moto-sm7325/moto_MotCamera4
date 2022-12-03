.class public Lcom/motorola/camera/panorama/PanoCallable$1;
.super Ljava/lang/Object;
.source "PanoCallable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/panorama/PanoCallable;

.field public final synthetic val$result:Lcom/adobe/xmp/impl/QName;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/PanoCallable;Lcom/adobe/xmp/impl/QName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoCallable$1;->this$0:Lcom/motorola/camera/panorama/PanoCallable;

    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoCallable$1;->val$result:Lcom/adobe/xmp/impl/QName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/PanoCallable$1;->this$0:Lcom/motorola/camera/panorama/PanoCallable;

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoCallable$1;->val$result:Lcom/adobe/xmp/impl/QName;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/panorama/PanoCallable;->callback(Lcom/adobe/xmp/impl/QName;)V

    return-void
.end method
