.class public final enum Lcom/nianticproject/ingress/shared/rpc/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/rpc/c;

.field public static final enum b:Lcom/nianticproject/ingress/shared/rpc/c;

.field public static final enum c:Lcom/nianticproject/ingress/shared/rpc/c;

.field public static final enum d:Lcom/nianticproject/ingress/shared/rpc/c;

.field public static final enum e:Lcom/nianticproject/ingress/shared/rpc/c;

.field private static final synthetic f:[Lcom/nianticproject/ingress/shared/rpc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/c;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->a:Lcom/nianticproject/ingress/shared/rpc/c;

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/c;

    const-string/jumbo v1, "CLIENT_UNABLE_TO_USE_POWER_CUBE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/rpc/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->b:Lcom/nianticproject/ingress/shared/rpc/c;

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/c;

    const-string/jumbo v1, "NOT_POWER_CUBE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/rpc/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->c:Lcom/nianticproject/ingress/shared/rpc/c;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/c;

    const-string/jumbo v1, "NOT_IN_PLAYER_INVENTORY"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/rpc/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->d:Lcom/nianticproject/ingress/shared/rpc/c;

    .line 15
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/c;

    const-string/jumbo v1, "WRONG_LEVEL"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/rpc/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->e:Lcom/nianticproject/ingress/shared/rpc/c;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/rpc/c;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/c;->a:Lcom/nianticproject/ingress/shared/rpc/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/c;->b:Lcom/nianticproject/ingress/shared/rpc/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/c;->c:Lcom/nianticproject/ingress/shared/rpc/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/c;->d:Lcom/nianticproject/ingress/shared/rpc/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/c;->e:Lcom/nianticproject/ingress/shared/rpc/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->f:[Lcom/nianticproject/ingress/shared/rpc/c;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/c;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/c;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/rpc/c;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->f:[Lcom/nianticproject/ingress/shared/rpc/c;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/rpc/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/rpc/c;

    return-object v0
.end method
