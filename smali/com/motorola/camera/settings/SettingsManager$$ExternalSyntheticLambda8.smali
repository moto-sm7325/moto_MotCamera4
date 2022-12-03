.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/common/TaskId;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$Key;

    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 1
    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    const-string v0, "$taskId"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 5
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
