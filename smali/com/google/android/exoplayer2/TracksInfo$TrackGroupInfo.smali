.class public final Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;
.super Ljava/lang/Object;
.source "TracksInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/TracksInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackGroupInfo"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public final trackSelected:[Z

.field public final trackSupport:[I

.field public final trackType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->INSTANCE$com$google$android$exoplayer2$TracksInfo$TrackGroupInfo$$InternalSyntheticLambda$4$9e845a8a7cfa7510467109b19581d72721e49d484908e6f99219cbcae2bebc58$0:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    sput-object v0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II[Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 3
    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v1, p4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 5
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    .line 7
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    return-void
.end method

.method public static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    .line 5
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    iget-object p1, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    .line 6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object v0
.end method
