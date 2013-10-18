.class public final enum Lcom/nianticproject/ingress/shared/rpc/push/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/push/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/rpc/push/a;

.field public static final enum b:Lcom/nianticproject/ingress/shared/rpc/push/a;

.field public static final enum c:Lcom/nianticproject/ingress/shared/rpc/push/a;

.field public static final enum d:Lcom/nianticproject/ingress/shared/rpc/push/a;

.field public static final enum e:Lcom/nianticproject/ingress/shared/rpc/push/a;

.field public static final enum f:Lcom/nianticproject/ingress/shared/rpc/push/a;

.field private static final synthetic g:[Lcom/nianticproject/ingress/shared/rpc/push/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    const-string/jumbo v1, "AT_PLAYER"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/rpc/push/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->a:Lcom/nianticproject/ingress/shared/rpc/push/a;

    .line 11
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    const-string/jumbo v1, "PORTAL_ATTACK"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/rpc/push/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->b:Lcom/nianticproject/ingress/shared/rpc/push/a;

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    const-string/jumbo v1, "PORTAL_NEUTRALIZED"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/rpc/push/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->c:Lcom/nianticproject/ingress/shared/rpc/push/a;

    .line 15
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    const-string/jumbo v1, "INVITE_ACCEPTED"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/rpc/push/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->d:Lcom/nianticproject/ingress/shared/rpc/push/a;

    .line 17
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    const-string/jumbo v1, "ACHIEVEMENT_UNLOCKED"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/shared/rpc/push/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->e:Lcom/nianticproject/ingress/shared/rpc/push/a;

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/push/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->f:Lcom/nianticproject/ingress/shared/rpc/push/a;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/rpc/push/a;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/push/a;->a:Lcom/nianticproject/ingress/shared/rpc/push/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/push/a;->b:Lcom/nianticproject/ingress/shared/rpc/push/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/push/a;->c:Lcom/nianticproject/ingress/shared/rpc/push/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/push/a;->d:Lcom/nianticproject/ingress/shared/rpc/push/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/push/a;->e:Lcom/nianticproject/ingress/shared/rpc/push/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/rpc/push/a;->f:Lcom/nianticproject/ingress/shared/rpc/push/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->g:[Lcom/nianticproject/ingress/shared/rpc/push/a;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/push/a;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/push/a;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/rpc/push/a;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/push/a;->g:[Lcom/nianticproject/ingress/shared/rpc/push/a;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/rpc/push/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/rpc/push/a;

    return-object v0
.end method
