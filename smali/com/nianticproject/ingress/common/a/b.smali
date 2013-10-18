.class public final enum Lcom/nianticproject/ingress/common/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum b:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum c:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum d:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum e:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum f:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum g:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum h:Lcom/nianticproject/ingress/common/a/b;

.field public static final enum i:Lcom/nianticproject/ingress/common/a/b;

.field private static final synthetic j:[Lcom/nianticproject/ingress/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_DATA_MODEL"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->a:Lcom/nianticproject/ingress/common/a/b;

    .line 55
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_DATABASE_INTEGRITY"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->b:Lcom/nianticproject/ingress/common/a/b;

    .line 56
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_UNEXPECTED_CODE_PATH"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->c:Lcom/nianticproject/ingress/common/a/b;

    .line 57
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_MEMORY_LEAK"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->d:Lcom/nianticproject/ingress/common/a/b;

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_RPC_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->e:Lcom/nianticproject/ingress/common/a/b;

    .line 59
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_HANDSHAKE_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->f:Lcom/nianticproject/ingress/common/a/b;

    .line 60
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_AUTH_FAILURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->g:Lcom/nianticproject/ingress/common/a/b;

    .line 61
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_UNEXPECTED_COUNT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->h:Lcom/nianticproject/ingress/common/a/b;

    .line 62
    new-instance v0, Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "DEFECT_CATEGORY_HTTP_FAILURE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->i:Lcom/nianticproject/ingress/common/a/b;

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nianticproject/ingress/common/a/b;

    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->a:Lcom/nianticproject/ingress/common/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->b:Lcom/nianticproject/ingress/common/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->c:Lcom/nianticproject/ingress/common/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->d:Lcom/nianticproject/ingress/common/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->e:Lcom/nianticproject/ingress/common/a/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/common/a/b;->f:Lcom/nianticproject/ingress/common/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/common/a/b;->g:Lcom/nianticproject/ingress/common/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/common/a/b;->h:Lcom/nianticproject/ingress/common/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/common/a/b;->i:Lcom/nianticproject/ingress/common/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/a/b;->j:[Lcom/nianticproject/ingress/common/a/b;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/a/b;
    .locals 1
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/nianticproject/ingress/common/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a/b;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/a/b;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/nianticproject/ingress/common/a/b;->j:[Lcom/nianticproject/ingress/common/a/b;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/a/b;

    return-object v0
.end method
