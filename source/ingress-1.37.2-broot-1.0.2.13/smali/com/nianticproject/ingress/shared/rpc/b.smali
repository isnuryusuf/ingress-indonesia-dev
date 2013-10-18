.class public final enum Lcom/nianticproject/ingress/shared/rpc/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/rpc/b;

.field public static final enum b:Lcom/nianticproject/ingress/shared/rpc/b;

.field public static final enum c:Lcom/nianticproject/ingress/shared/rpc/b;

.field public static final enum d:Lcom/nianticproject/ingress/shared/rpc/b;

.field public static final enum e:Lcom/nianticproject/ingress/shared/rpc/b;

.field public static final f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/nianticproject/ingress/shared/rpc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/b;

    const-string/jumbo v1, "OPS_TAKEDOWN"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->a:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/b;

    const-string/jumbo v1, "OPS_EDIT"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/rpc/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->b:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/b;

    const-string/jumbo v1, "PLAYER_TAKEDOWN"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/rpc/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->c:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/b;

    const-string/jumbo v1, "PLAYER_EDIT"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/rpc/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->d:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 20
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/b;

    const-string/jumbo v1, "NEW_SUBMISSION"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/rpc/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->e:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/rpc/b;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->a:Lcom/nianticproject/ingress/shared/rpc/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->b:Lcom/nianticproject/ingress/shared/rpc/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->c:Lcom/nianticproject/ingress/shared/rpc/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->d:Lcom/nianticproject/ingress/shared/rpc/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->e:Lcom/nianticproject/ingress/shared/rpc/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->g:[Lcom/nianticproject/ingress/shared/rpc/b;

    .line 27
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->a:Lcom/nianticproject/ingress/shared/rpc/b;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->b:Lcom/nianticproject/ingress/shared/rpc/b;

    sget-object v2, Lcom/nianticproject/ingress/shared/rpc/b;->c:Lcom/nianticproject/ingress/shared/rpc/b;

    sget-object v3, Lcom/nianticproject/ingress/shared/rpc/b;->d:Lcom/nianticproject/ingress/shared/rpc/b;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->f:Ljava/util/EnumSet;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/b;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/b;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/rpc/b;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/b;->g:[Lcom/nianticproject/ingress/shared/rpc/b;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/rpc/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/rpc/b;

    return-object v0
.end method
