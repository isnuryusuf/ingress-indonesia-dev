.class public final enum Lcom/nianticproject/ingress/shared/invites/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/invites/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/invites/a;

.field public static final enum b:Lcom/nianticproject/ingress/shared/invites/a;

.field public static final enum c:Lcom/nianticproject/ingress/shared/invites/a;

.field private static final synthetic d:[Lcom/nianticproject/ingress/shared/invites/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/nianticproject/ingress/shared/invites/a;

    const-string/jumbo v1, "REDEEMED"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/invites/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/invites/a;->a:Lcom/nianticproject/ingress/shared/invites/a;

    .line 69
    new-instance v0, Lcom/nianticproject/ingress/shared/invites/a;

    const-string/jumbo v1, "NO_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/invites/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/invites/a;->b:Lcom/nianticproject/ingress/shared/invites/a;

    .line 71
    new-instance v0, Lcom/nianticproject/ingress/shared/invites/a;

    const-string/jumbo v1, "ACCEPTED_ANOTHER_PLAYERS_INVITE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/invites/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/invites/a;->c:Lcom/nianticproject/ingress/shared/invites/a;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/invites/a;

    sget-object v1, Lcom/nianticproject/ingress/shared/invites/a;->a:Lcom/nianticproject/ingress/shared/invites/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/invites/a;->b:Lcom/nianticproject/ingress/shared/invites/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/invites/a;->c:Lcom/nianticproject/ingress/shared/invites/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/shared/invites/a;->d:[Lcom/nianticproject/ingress/shared/invites/a;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/invites/a;
    .locals 1
    .parameter

    .prologue
    .line 65
    const-class v0, Lcom/nianticproject/ingress/shared/invites/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/invites/a;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/invites/a;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/nianticproject/ingress/shared/invites/a;->d:[Lcom/nianticproject/ingress/shared/invites/a;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/invites/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/invites/a;

    return-object v0
.end method
