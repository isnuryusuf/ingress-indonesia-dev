.class public final enum Lcom/nianticproject/ingress/common/c/bq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/c/bq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/c/bq;

.field public static final enum b:Lcom/nianticproject/ingress/common/c/bq;

.field public static final enum c:Lcom/nianticproject/ingress/common/c/bq;

.field public static final enum d:Lcom/nianticproject/ingress/common/c/bq;

.field private static final synthetic f:[Lcom/nianticproject/ingress/common/c/bq;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/common/c/bq;

    const-string/jumbo v1, "VERY_SHORT"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/common/c/bq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bq;->a:Lcom/nianticproject/ingress/common/c/bq;

    .line 39
    new-instance v0, Lcom/nianticproject/ingress/common/c/bq;

    const-string/jumbo v1, "SHORT"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/common/c/bq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bq;->b:Lcom/nianticproject/ingress/common/c/bq;

    .line 40
    new-instance v0, Lcom/nianticproject/ingress/common/c/bq;

    const-string/jumbo v1, "NORMAL"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/common/c/bq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bq;->c:Lcom/nianticproject/ingress/common/c/bq;

    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/c/bq;

    const-string/jumbo v1, "LONG"

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v6, v2}, Lcom/nianticproject/ingress/common/c/bq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bq;->d:Lcom/nianticproject/ingress/common/c/bq;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/bq;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->a:Lcom/nianticproject/ingress/common/c/bq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->b:Lcom/nianticproject/ingress/common/c/bq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->c:Lcom/nianticproject/ingress/common/c/bq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->d:Lcom/nianticproject/ingress/common/c/bq;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/common/c/bq;->f:[Lcom/nianticproject/ingress/common/c/bq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nianticproject/ingress/common/c/bq;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/c/bq;
    .locals 1
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/nianticproject/ingress/common/c/bq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bq;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/c/bq;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/nianticproject/ingress/common/c/bq;->f:[Lcom/nianticproject/ingress/common/c/bq;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/c/bq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/c/bq;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bq;->e:I

    return v0
.end method
