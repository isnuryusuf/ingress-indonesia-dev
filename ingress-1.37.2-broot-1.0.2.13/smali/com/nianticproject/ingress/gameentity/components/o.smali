.class public final enum Lcom/nianticproject/ingress/gameentity/components/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/gameentity/components/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/gameentity/components/o;

.field public static final enum b:Lcom/nianticproject/ingress/gameentity/components/o;

.field public static final enum c:Lcom/nianticproject/ingress/gameentity/components/o;

.field public static final enum d:Lcom/nianticproject/ingress/gameentity/components/o;

.field private static final synthetic f:[Lcom/nianticproject/ingress/gameentity/components/o;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/o;

    const-string/jumbo v1, "MULTIPLIER"

    const-string/jumbo v2, "x"

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/gameentity/components/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/o;->a:Lcom/nianticproject/ingress/gameentity/components/o;

    .line 21
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/o;

    const-string/jumbo v1, "PROBABILITY"

    const-string/jumbo v2, "%"

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/gameentity/components/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/o;->b:Lcom/nianticproject/ingress/gameentity/components/o;

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/o;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/gameentity/components/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/o;->c:Lcom/nianticproject/ingress/gameentity/components/o;

    .line 30
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/o;

    const-string/jumbo v1, "VALUE"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/nianticproject/ingress/gameentity/components/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/o;->d:Lcom/nianticproject/ingress/gameentity/components/o;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/gameentity/components/o;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/o;->a:Lcom/nianticproject/ingress/gameentity/components/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/o;->b:Lcom/nianticproject/ingress/gameentity/components/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/o;->c:Lcom/nianticproject/ingress/gameentity/components/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/o;->d:Lcom/nianticproject/ingress/gameentity/components/o;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/o;->f:[Lcom/nianticproject/ingress/gameentity/components/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/nianticproject/ingress/gameentity/components/o;->e:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/o;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/o;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/gameentity/components/o;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/o;->f:[Lcom/nianticproject/ingress/gameentity/components/o;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/gameentity/components/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/gameentity/components/o;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/o;->e:Ljava/lang/String;

    return-object v0
.end method
