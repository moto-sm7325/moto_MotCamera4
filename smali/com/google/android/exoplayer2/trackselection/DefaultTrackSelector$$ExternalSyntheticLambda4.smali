.class public final synthetic Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

.field public static final synthetic INSTANCE$com$motorola$camera$ui$controls_2020$modesmenu$SmallScreenModesMenuComponent$$InternalSyntheticLambda$6$a236e02aacd248db628baf68b26ffce6cce3b61b229a20d90f2f47bc6c5496b4$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->INSTANCE$com$motorola$camera$ui$controls_2020$modesmenu$SmallScreenModesMenuComponent$$InternalSyntheticLambda$6$a236e02aacd248db628baf68b26ffce6cce3b61b229a20d90f2f47bc6c5496b4$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    const/4 p0, 0x0

    return p0

    :goto_0
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->MODES_ORDERING:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sub-int v1, p1, p0

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
