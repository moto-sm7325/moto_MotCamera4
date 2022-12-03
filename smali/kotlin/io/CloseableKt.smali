.class public final Lkotlin/io/CloseableKt;
.super Ljava/lang/Object;
.source "Closeable.kt"


# static fields
.field public static zza$com$google$android$gms$internal$mlkit_common$zzkc:Lcom/google/android/gms/internal/mlkit_common/zzkb;


# direct methods
.method public static final closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 2
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorType;

    if-nez v0, :cond_1

    .line 3
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorType;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    return p0
.end method
