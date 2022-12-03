.class public final synthetic Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$com$motorola$camera$fsm$camera$states$runnables$IdleOnEntryRunnable$$InternalSyntheticLambda$5$b6c230b3f824de88ff48ff73a25c64b5e8af639ea93f96d30da5c07a30746cd3$1:Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$fsm$camera$states$runnables$IdleOnEntryRunnable$$InternalSyntheticLambda$5$b6c230b3f824de88ff48ff73a25c64b5e8af639ea93f96d30da5c07a30746cd3$1:Lcom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 2

    sget-object p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1
    sget p0, Lcom/google/android/exoplayer2/source/TrackGroup;->$r8$clinit:I

    sget-object p0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    const/16 v0, 0x24

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 5
    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v0, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object p1
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void
.end method
