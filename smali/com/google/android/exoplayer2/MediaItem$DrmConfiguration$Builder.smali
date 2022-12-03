.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public forceDefaultLicenseUri:Z

.field public forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public keySetId:[B

.field public licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public licenseUri:Landroid/net/Uri;

.field public multiSession:Z

.field public playClearContentWithoutKey:Z

.field public scheme:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 3
    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 4
    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 8
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    .line 9
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 10
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    .line 11
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 12
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    .line 13
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-void
.end method
