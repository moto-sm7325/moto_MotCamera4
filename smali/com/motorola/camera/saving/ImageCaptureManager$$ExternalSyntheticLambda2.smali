.class public final synthetic Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$TracksInfo$TrackGroupInfo$$InternalSyntheticLambda$4$9e845a8a7cfa7510467109b19581d72721e49d484908e6f99219cbcae2bebc58$0:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$trackselection$TrackSelectionOverrides$TrackSelectionOverride$$InternalSyntheticLambda$5$f2fb3316a181a59f5d0a47dd57b7ead2934a72b40b327206a3704c71031f183d$0:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->INSTANCE$com$google$android$exoplayer2$TracksInfo$TrackGroupInfo$$InternalSyntheticLambda$4$9e845a8a7cfa7510467109b19581d72721e49d484908e6f99219cbcae2bebc58$0:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->INSTANCE$com$google$android$exoplayer2$trackselection$TrackSelectionOverrides$TrackSelectionOverride$$InternalSyntheticLambda$5$f2fb3316a181a59f5d0a47dd57b7ead2934a72b40b327206a3704c71031f183d$0:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 6

    iget p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->$r8$classId:I

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 1
    sget p0, Lcom/google/android/exoplayer2/source/TrackGroup;->$r8$clinit:I

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget v3, Lcom/google/android/exoplayer2/source/TrackGroup;->$r8$clinit:I

    .line 4
    sget-object v3, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 7
    sget-object v5, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 8
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/Format;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    move-object p0, v0

    .line 11
    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v1, v1, [I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const/4 v1, 0x2

    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    .line 14
    invoke-static {v2}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v2, v2, [Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v2

    .line 15
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II[Z)V

    return-object v2

    .line 16
    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget v3, Lcom/google/android/exoplayer2/source/TrackGroup;->$r8$clinit:I

    .line 19
    sget-object v3, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 21
    sget-object v5, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 22
    sget-object v5, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 23
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 24
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/Format;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    .line 26
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    if-nez p0, :cond_3

    .line 27
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;)V

    goto :goto_5

    .line 28
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    .line 29
    array-length v1, p0

    if-nez v1, :cond_4

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_4

    .line 31
    :cond_4
    new-instance v1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v1, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    move-object p0, v1

    .line 32
    :goto_4
    invoke-direct {p1, v0, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Ljava/util/List;)V

    move-object p0, p1

    :goto_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireLatestImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
