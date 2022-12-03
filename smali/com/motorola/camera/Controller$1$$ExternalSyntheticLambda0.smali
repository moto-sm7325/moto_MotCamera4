.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller$1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller$1;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
