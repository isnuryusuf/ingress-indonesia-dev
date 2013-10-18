.class final enum Lcom/nianticproject/ingress/common/c/bg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/c/bg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/c/bg;

.field public static final enum b:Lcom/nianticproject/ingress/common/c/bg;

.field public static final enum c:Lcom/nianticproject/ingress/common/c/bg;

.field private static final synthetic d:[Lcom/nianticproject/ingress/common/c/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/nianticproject/ingress/common/c/bg;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    .line 107
    new-instance v0, Lcom/nianticproject/ingress/common/c/bg;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    .line 108
    new-instance v0, Lcom/nianticproject/ingress/common/c/bg;

    const-string/jumbo v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bg;->c:Lcom/nianticproject/ingress/common/c/bg;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->c:Lcom/nianticproject/ingress/common/c/bg;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/common/c/bg;->d:[Lcom/nianticproject/ingress/common/c/bg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/c/bg;
    .locals 1
    .parameter

    .prologue
    .line 105
    const-class v0, Lcom/nianticproject/ingress/common/c/bg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bg;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/c/bg;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->d:[Lcom/nianticproject/ingress/common/c/bg;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/c/bg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/c/bg;

    return-object v0
.end method
