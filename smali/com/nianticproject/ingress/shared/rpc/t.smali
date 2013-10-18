.class public final enum Lcom/nianticproject/ingress/shared/rpc/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/rpc/t;

.field public static final enum b:Lcom/nianticproject/ingress/shared/rpc/t;

.field public static final enum c:Lcom/nianticproject/ingress/shared/rpc/t;

.field public static final enum d:Lcom/nianticproject/ingress/shared/rpc/t;

.field public static final enum e:Lcom/nianticproject/ingress/shared/rpc/t;

.field public static final enum f:Lcom/nianticproject/ingress/shared/rpc/t;

.field public static final enum g:Lcom/nianticproject/ingress/shared/rpc/t;

.field private static final synthetic h:[Lcom/nianticproject/ingress/shared/rpc/t;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/t;

    const-string/jumbo v1, "PORTAL_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/rpc/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->a:Lcom/nianticproject/ingress/shared/rpc/t;

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/t;

    const-string/jumbo v1, "BAD_TITLE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/rpc/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->b:Lcom/nianticproject/ingress/shared/rpc/t;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/t;

    const-string/jumbo v1, "BAD_DESCRIPTION"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/rpc/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->c:Lcom/nianticproject/ingress/shared/rpc/t;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/t;

    const-string/jumbo v1, "BAD_LOCATION"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/rpc/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->d:Lcom/nianticproject/ingress/shared/rpc/t;

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/t;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/shared/rpc/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->e:Lcom/nianticproject/ingress/shared/rpc/t;

    .line 20
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/t;

    const-string/jumbo v1, "FEATURE_DISABLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->f:Lcom/nianticproject/ingress/shared/rpc/t;

    .line 22
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/t;

    const-string/jumbo v1, "ALREADY_UPLOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->g:Lcom/nianticproject/ingress/shared/rpc/t;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/rpc/t;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->a:Lcom/nianticproject/ingress/shared/rpc/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->b:Lcom/nianticproject/ingress/shared/rpc/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->c:Lcom/nianticproject/ingress/shared/rpc/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->d:Lcom/nianticproject/ingress/shared/rpc/t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->e:Lcom/nianticproject/ingress/shared/rpc/t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/rpc/t;->f:Lcom/nianticproject/ingress/shared/rpc/t;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/shared/rpc/t;->g:Lcom/nianticproject/ingress/shared/rpc/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->h:[Lcom/nianticproject/ingress/shared/rpc/t;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/t;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/t;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/rpc/t;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/t;->h:[Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/rpc/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/rpc/t;

    return-object v0
.end method
