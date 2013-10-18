.class public final enum Lcom/nianticproject/ingress/shared/ai;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/ai;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/ai;

.field public static final enum b:Lcom/nianticproject/ingress/shared/ai;

.field public static final enum c:Lcom/nianticproject/ingress/shared/ai;

.field private static final synthetic e:[Lcom/nianticproject/ingress/shared/ai;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v1, "RESISTANCE"

    const-string/jumbo v2, "Resistance"

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/shared/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v1, "ALIENS"

    const-string/jumbo v2, "Enlightened"

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/shared/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v1, "NEUTRAL"

    const-string/jumbo v2, "Neutral"

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/shared/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/ai;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/shared/ai;->e:[Lcom/nianticproject/ingress/shared/ai;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/ai;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/ai;
    .locals 1
    .parameter

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/nianticproject/ingress/shared/ai;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/ai;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/ai;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->e:[Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ai;->d:Ljava/lang/String;

    return-object v0
.end method
