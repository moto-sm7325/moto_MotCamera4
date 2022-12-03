.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$com$motorola$camera$ui$widgets$gl$ButtonTouchBehavior$$InternalSyntheticLambda$3$5106ba4e2a19ffe5fd9fa3a5a9535cd0d73132c25bed7979571b0bc2870aeb03$0:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$ui$widgets$gl$ButtonTouchBehavior$$InternalSyntheticLambda$3$5106ba4e2a19ffe5fd9fa3a5a9535cd0d73132c25bed7979571b0bc2870aeb03$0:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 4
    :goto_0
    sget p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTapTimeout:I

    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
