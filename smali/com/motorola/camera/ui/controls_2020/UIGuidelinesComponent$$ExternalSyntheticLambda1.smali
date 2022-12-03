.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
