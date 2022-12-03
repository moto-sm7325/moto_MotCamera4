.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LaunchGalleryTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.widgets.gl.photoroll.LaunchGalleryTask$start$1$result$1"
    f = "LaunchGalleryTask.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $data:Lcom/motorola/camera/CameraData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/CameraData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;-><init>(Lcom/motorola/camera/CameraData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;-><init>(Lcom/motorola/camera/CameraData;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    .line 5
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1$result$1;->$data:Lcom/motorola/camera/CameraData;

    .line 3
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    return-object p0
.end method
