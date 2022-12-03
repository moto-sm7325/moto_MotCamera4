.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$Companion;
.super Ljava/lang/Object;
.source "WaterMarkEditPreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaterMarkEditPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaterMarkEditPreference.kt\ncom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,247:1\n511#2:248\n496#2,6:249\n211#3,2:255\n*S KotlinDebug\n*F\n+ 1 WaterMarkEditPreference.kt\ncom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$Companion\n*L\n230#1:248\n230#1:249,6\n233#1:255,2\n*E\n"
.end annotation


# direct methods
.method public static final adjustMarginOnLargerDisplay(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/fragment/R$anim;->getMainDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 3
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    const/high16 p0, 0x44480000    # 800.0f

    cmpg-float p0, v0, p0

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 4
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    :goto_1
    instance-of p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
