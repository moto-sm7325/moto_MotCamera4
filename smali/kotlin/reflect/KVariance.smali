.class public final enum Lkotlin/reflect/KVariance;
.super Ljava/lang/Enum;
.source "KVariance.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/KVariance;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/KVariance;

.field public static final enum IN:Lkotlin/reflect/KVariance;

.field public static final enum INVARIANT:Lkotlin/reflect/KVariance;

.field public static final enum OUT:Lkotlin/reflect/KVariance;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lkotlin/reflect/KVariance;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    .line 2
    new-instance v1, Lkotlin/reflect/KVariance;

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    .line 3
    new-instance v3, Lkotlin/reflect/KVariance;

    const-string v5, "OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/reflect/KVariance;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lkotlin/reflect/KVariance;->$VALUES:[Lkotlin/reflect/KVariance;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/KVariance;
    .locals 1

    const-class v0, Lkotlin/reflect/KVariance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KVariance;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/KVariance;
    .locals 1

    sget-object v0, Lkotlin/reflect/KVariance;->$VALUES:[Lkotlin/reflect/KVariance;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/KVariance;

    return-object v0
.end method
