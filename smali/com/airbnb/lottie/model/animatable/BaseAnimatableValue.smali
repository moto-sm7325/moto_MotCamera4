.class public abstract Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.super Ljava/lang/Object;
.source "BaseAnimatableValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
        "TV;TO;>;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public final keyframes:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->$r8$classId:I

    .line 2
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKeyframes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isStatic()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "values="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract zza(Ljava/lang/Object;J)D
.end method

.method public abstract zzb(Ljava/lang/Object;J)F
.end method

.method public abstract zzc(Ljava/lang/Object;JZ)V
.end method

.method public abstract zzd(Ljava/lang/Object;JB)V
.end method

.method public abstract zze(Ljava/lang/Object;JD)V
.end method

.method public abstract zzf(Ljava/lang/Object;JF)V
.end method

.method public abstract zzg(Ljava/lang/Object;J)Z
.end method

.method public zzh(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public zzi(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public zzj(Ljava/lang/Object;J)I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public zzk(Ljava/lang/Object;J)J
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public zzl(Ljava/lang/reflect/Field;)J
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p0

    return-wide p0
.end method

.method public zzm(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public zzn(Ljava/lang/Object;JI)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public zzo(Ljava/lang/Object;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public zzp(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/lang/Object;

    check-cast p0, Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
