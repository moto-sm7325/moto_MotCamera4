.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee<",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;",
        "Lcom/google/photos/vision/barhopper/zzab;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzae;

.field private zzg:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;-><init>()V

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Lcom/google/photos/vision/barhopper/zzab;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/photos/vision/barhopper/zzab;-><init>(I)V

    return-object p1

    .line 4
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;-><init>()V

    return-object p0

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zze"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, p0

    const-string/jumbo p0, "zzg"

    aput-object p0, p1, p3

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzab;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1007\u0001"

    .line 8
    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
