.class public final enum Lcom/nianticproject/ingress/shared/aa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/aa;

.field public static final enum b:Lcom/nianticproject/ingress/shared/aa;

.field public static final enum c:Lcom/nianticproject/ingress/shared/aa;

.field public static final enum d:Lcom/nianticproject/ingress/shared/aa;

.field public static final enum e:Lcom/nianticproject/ingress/shared/aa;

.field public static final enum f:Lcom/nianticproject/ingress/shared/aa;

.field private static final synthetic g:[Lcom/nianticproject/ingress/shared/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/shared/aa;

    const-string/jumbo v1, "INVALID_PASSCODE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/aa;->a:Lcom/nianticproject/ingress/shared/aa;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/shared/aa;

    const-string/jumbo v1, "ALREADY_REDEEMED_BY_PLAYER"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/aa;->b:Lcom/nianticproject/ingress/shared/aa;

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/shared/aa;

    const-string/jumbo v1, "ALREADY_REDEEMED"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/aa;->c:Lcom/nianticproject/ingress/shared/aa;

    .line 22
    new-instance v0, Lcom/nianticproject/ingress/shared/aa;

    const-string/jumbo v1, "INVALID_PLAYER"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/aa;->d:Lcom/nianticproject/ingress/shared/aa;

    .line 25
    new-instance v0, Lcom/nianticproject/ingress/shared/aa;

    const-string/jumbo v1, "INVENTORY_FULL"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/shared/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/aa;->e:Lcom/nianticproject/ingress/shared/aa;

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/shared/aa;

    const-string/jumbo v1, "SERVER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/aa;->f:Lcom/nianticproject/ingress/shared/aa;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/aa;

    sget-object v1, Lcom/nianticproject/ingress/shared/aa;->a:Lcom/nianticproject/ingress/shared/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/aa;->b:Lcom/nianticproject/ingress/shared/aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/aa;->c:Lcom/nianticproject/ingress/shared/aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/aa;->d:Lcom/nianticproject/ingress/shared/aa;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/shared/aa;->e:Lcom/nianticproject/ingress/shared/aa;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/aa;->f:Lcom/nianticproject/ingress/shared/aa;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/aa;->g:[Lcom/nianticproject/ingress/shared/aa;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/aa;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/nianticproject/ingress/shared/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/aa;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/aa;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/nianticproject/ingress/shared/aa;->g:[Lcom/nianticproject/ingress/shared/aa;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/aa;

    return-object v0
.end method
