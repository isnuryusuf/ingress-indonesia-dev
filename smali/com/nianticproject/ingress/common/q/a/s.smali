.class public final enum Lcom/nianticproject/ingress/common/q/a/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/q/a/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/q/a/s;

.field public static final enum b:Lcom/nianticproject/ingress/common/q/a/s;

.field public static final enum c:Lcom/nianticproject/ingress/common/q/a/s;

.field public static final enum d:Lcom/nianticproject/ingress/common/q/a/s;

.field public static final enum e:Lcom/nianticproject/ingress/common/q/a/s;

.field private static final synthetic f:[Lcom/nianticproject/ingress/common/q/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/s;

    const-string/jumbo v1, "NO_DATA"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/q/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/s;->a:Lcom/nianticproject/ingress/common/q/a/s;

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/s;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/q/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/s;->b:Lcom/nianticproject/ingress/common/q/a/s;

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/s;

    const-string/jumbo v1, "STOP_AND_GO"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/q/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/s;->c:Lcom/nianticproject/ingress/common/q/a/s;

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/s;

    const-string/jumbo v1, "SLOW"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/q/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/s;->d:Lcom/nianticproject/ingress/common/q/a/s;

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/s;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/common/q/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/s;->e:Lcom/nianticproject/ingress/common/q/a/s;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/common/q/a/s;

    sget-object v1, Lcom/nianticproject/ingress/common/q/a/s;->a:Lcom/nianticproject/ingress/common/q/a/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/q/a/s;->b:Lcom/nianticproject/ingress/common/q/a/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/q/a/s;->c:Lcom/nianticproject/ingress/common/q/a/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/q/a/s;->d:Lcom/nianticproject/ingress/common/q/a/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/q/a/s;->e:Lcom/nianticproject/ingress/common/q/a/s;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/s;->f:[Lcom/nianticproject/ingress/common/q/a/s;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/q/a/s;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/nianticproject/ingress/common/q/a/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/a/s;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/q/a/s;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/s;->f:[Lcom/nianticproject/ingress/common/q/a/s;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/q/a/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/q/a/s;

    return-object v0
.end method
