.class final enum Lcom/nianticproject/ingress/common/i/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/i/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/i/c;

.field public static final enum b:Lcom/nianticproject/ingress/common/i/c;

.field public static final enum c:Lcom/nianticproject/ingress/common/i/c;

.field public static final enum d:Lcom/nianticproject/ingress/common/i/c;

.field public static final enum e:Lcom/nianticproject/ingress/common/i/c;

.field public static final enum f:Lcom/nianticproject/ingress/common/i/c;

.field public static final enum g:Lcom/nianticproject/ingress/common/i/c;

.field private static final synthetic h:[Lcom/nianticproject/ingress/common/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/nianticproject/ingress/common/i/c;

    const-string/jumbo v1, "NASCIENT"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->a:Lcom/nianticproject/ingress/common/i/c;

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/i/c;

    const-string/jumbo v1, "CREATED"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->b:Lcom/nianticproject/ingress/common/i/c;

    .line 36
    new-instance v0, Lcom/nianticproject/ingress/common/i/c;

    const-string/jumbo v1, "SIZE_INITIALIZED"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->c:Lcom/nianticproject/ingress/common/i/c;

    .line 37
    new-instance v0, Lcom/nianticproject/ingress/common/i/c;

    const-string/jumbo v1, "RESUMED"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/common/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/common/i/c;

    const-string/jumbo v1, "RENDERING"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/common/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->e:Lcom/nianticproject/ingress/common/i/c;

    .line 39
    new-instance v0, Lcom/nianticproject/ingress/common/i/c;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->f:Lcom/nianticproject/ingress/common/i/c;

    .line 40
    new-instance v0, Lcom/nianticproject/ingress/common/i/c;

    const-string/jumbo v1, "DISPOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->g:Lcom/nianticproject/ingress/common/i/c;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nianticproject/ingress/common/i/c;

    sget-object v1, Lcom/nianticproject/ingress/common/i/c;->a:Lcom/nianticproject/ingress/common/i/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/i/c;->b:Lcom/nianticproject/ingress/common/i/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/i/c;->c:Lcom/nianticproject/ingress/common/i/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/i/c;->d:Lcom/nianticproject/ingress/common/i/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/i/c;->e:Lcom/nianticproject/ingress/common/i/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/common/i/c;->f:Lcom/nianticproject/ingress/common/i/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/common/i/c;->g:Lcom/nianticproject/ingress/common/i/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/i/c;->h:[Lcom/nianticproject/ingress/common/i/c;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/i/c;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/nianticproject/ingress/common/i/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/i/c;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/i/c;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->h:[Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/i/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/i/c;

    return-object v0
.end method
