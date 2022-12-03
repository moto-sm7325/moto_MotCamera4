.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
.super Ljava/lang/Object;
.source "ParcelableWorkerParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mData:Landroidx/work/Data;

.field public final mId:Ljava/util/UUID;

.field public final mRunAttemptCount:I

.field public final mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field public final mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    .line 15
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 16
    iget-object v0, v0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    .line 17
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/Data;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/Set;

    .line 19
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;-><init>(Landroid/os/Parcel;)V

    .line 20
    iget-object v0, v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 21
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    return-void
.end method

.method public constructor <init>(Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 3
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    .line 4
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 5
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/Data;

    .line 6
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mTags:Ljava/util/Set;

    .line 7
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/Set;

    .line 8
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 9
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 10
    iget p1, p1, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    .line 11
    iput p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/Data;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 7
    iget-object v1, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->network:Landroid/net/Network;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 8
    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    :cond_1
    iget-object v1, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentUris:Ljava/util/List;

    .line 11
    iget-object v0, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentAuthorities:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 13
    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v4, :cond_4

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Landroid/net/Uri;

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_3

    .line 15
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    :cond_4
    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    move v2, v3

    .line 18
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 20
    :cond_6
    iget p0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
