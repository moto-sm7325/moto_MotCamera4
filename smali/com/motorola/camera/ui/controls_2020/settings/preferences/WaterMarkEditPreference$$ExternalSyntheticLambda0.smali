.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$Companion;

    const-string/jumbo p1, "this$0"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->textChanged:Z

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    if-eqz p2, :cond_3

    .line 4
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$Companion$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$Companion$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    if-nez p0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->textChanged:Z

    :cond_3
    :goto_2
    return-void
.end method
