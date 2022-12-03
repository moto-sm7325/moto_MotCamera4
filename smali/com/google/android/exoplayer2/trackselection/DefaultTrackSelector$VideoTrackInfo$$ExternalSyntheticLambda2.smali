.class public final synthetic Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;

.field public static final synthetic INSTANCE$com$motorola$camera$ui$controls_2020$settings$preferences$ResolutionListPreference$Companion$$InternalSyntheticLambda$1$7f455146fdac751c404557208ec7ba546acaaca8cadd7dcbb4ae8b0d93d87c82$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;->INSTANCE$com$motorola$camera$ui$controls_2020$settings$preferences$ResolutionListPreference$Companion$$InternalSyntheticLambda$1$7f455146fdac751c404557208ec7ba546acaaca8cadd7dcbb4ae8b0d93d87c82$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$edrE9ReKEEMhYewQsqcS1VQ6zfA(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :goto_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    const-string p0, "lhs"

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rhs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 4
    :goto_1
    iget-object p2, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    :goto_2
    mul-int/2addr p0, p2

    .line 6
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 8
    :goto_3
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-nez p1, :cond_3

    goto :goto_4

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_4
    mul-int/2addr p2, v0

    sub-int/2addr p0, p2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
