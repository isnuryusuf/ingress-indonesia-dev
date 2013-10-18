.class final enum Lcom/nianticproject/ingress/cf;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/cf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/cf;

.field public static final enum b:Lcom/nianticproject/ingress/cf;

.field public static final enum c:Lcom/nianticproject/ingress/cf;

.field private static final synthetic d:[Lcom/nianticproject/ingress/cf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/nianticproject/ingress/cf;

    const-string/jumbo v1, "SELECT_ACCOUNT"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/cf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/cf;->a:Lcom/nianticproject/ingress/cf;

    .line 164
    new-instance v0, Lcom/nianticproject/ingress/cf;

    const-string/jumbo v1, "PREGAME"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/cf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/cf;->b:Lcom/nianticproject/ingress/cf;

    .line 165
    new-instance v0, Lcom/nianticproject/ingress/cf;

    const-string/jumbo v1, "GAME"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/cf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/cf;->c:Lcom/nianticproject/ingress/cf;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/cf;

    sget-object v1, Lcom/nianticproject/ingress/cf;->a:Lcom/nianticproject/ingress/cf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/cf;->b:Lcom/nianticproject/ingress/cf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/cf;->c:Lcom/nianticproject/ingress/cf;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/cf;->d:[Lcom/nianticproject/ingress/cf;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/cf;
    .locals 1
    .parameter

    .prologue
    .line 162
    const-class v0, Lcom/nianticproject/ingress/cf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/cf;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/cf;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/nianticproject/ingress/cf;->d:[Lcom/nianticproject/ingress/cf;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/cf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/cf;

    return-object v0
.end method
