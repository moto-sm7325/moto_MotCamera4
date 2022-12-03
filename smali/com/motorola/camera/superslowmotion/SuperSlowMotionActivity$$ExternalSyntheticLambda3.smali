.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    const-string/jumbo p1, "this$0"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-boolean p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    return-void
.end method
