.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoi;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;

.field public final zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;

.field public final zzf:[Ljava/lang/String;

.field public final zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzob;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzot;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoi;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzob;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoi;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzf:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzob;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->zza(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoi;

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2, v1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, v2, v1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;

    const/4 v2, 0x5

    .line 7
    invoke-static {p1, v2, v1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzf:[Ljava/lang/String;

    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v2, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzob;

    const/4 v1, 0x7

    .line 9
    invoke-static {p1, v1, p0, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 10
    invoke-static {p1, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
