.class public final Lcom/google/zxing/client/result/ISBNParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "ISBNParsedResult.java"


# instance fields
.field public final isbn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    return-object p0
.end method