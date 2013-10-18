.class public final enum Lcom/nianticproject/ingress/gameentity/components/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/gameentity/components/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/gameentity/components/l;

.field public static final enum b:Lcom/nianticproject/ingress/gameentity/components/l;

.field public static final enum c:Lcom/nianticproject/ingress/gameentity/components/l;

.field public static final enum d:Lcom/nianticproject/ingress/gameentity/components/l;

.field public static final enum e:Lcom/nianticproject/ingress/gameentity/components/l;

.field public static final enum f:Lcom/nianticproject/ingress/gameentity/components/l;

.field private static final synthetic i:[Lcom/nianticproject/ingress/gameentity/components/l;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/l;

    const-string/jumbo v1, "VERY_COMMON"

    const-string/jumbo v2, "Very Common"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/nianticproject/ingress/gameentity/components/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->a:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/l;

    const-string/jumbo v1, "COMMON"

    const-string/jumbo v2, "Common"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/nianticproject/ingress/gameentity/components/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->b:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 17
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/l;

    const-string/jumbo v1, "LESS_COMMON"

    const-string/jumbo v2, "Less Common"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/nianticproject/ingress/gameentity/components/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->c:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/l;

    const-string/jumbo v1, "RARE"

    const-string/jumbo v2, "Rare"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/nianticproject/ingress/gameentity/components/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->d:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/l;

    const-string/jumbo v1, "VERY_RARE"

    const-string/jumbo v2, "Very Rare"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/nianticproject/ingress/gameentity/components/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->e:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 20
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/l;

    const-string/jumbo v1, "EXTREMELY_RARE"

    const/4 v2, 0x5

    const-string/jumbo v3, "Most Rare"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->f:Lcom/nianticproject/ingress/gameentity/components/l;

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/gameentity/components/l;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/l;->a:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/l;->b:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/l;->c:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/l;->d:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/l;->e:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->f:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->i:[Lcom/nianticproject/ingress/gameentity/components/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/nianticproject/ingress/gameentity/components/l;->g:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/nianticproject/ingress/gameentity/components/l;->h:I

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/l;
    .locals 1
    .parameter

    .prologue
    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/nianticproject/ingress/gameentity/components/l;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/l;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->a:Lcom/nianticproject/ingress/gameentity/components/l;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/l;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/l;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/gameentity/components/l;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/l;->i:[Lcom/nianticproject/ingress/gameentity/components/l;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/gameentity/components/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/gameentity/components/l;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/l;->h:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/l;->h:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
