.class public final enum Lcom/nianticproject/ingress/curation/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/curation/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/curation/c;

.field public static final enum b:Lcom/nianticproject/ingress/curation/c;

.field public static final enum c:Lcom/nianticproject/ingress/curation/c;

.field private static final synthetic d:[Lcom/nianticproject/ingress/curation/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/nianticproject/ingress/curation/c;

    const-string/jumbo v1, "VIA_EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/curation/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/curation/c;->a:Lcom/nianticproject/ingress/curation/c;

    .line 49
    new-instance v0, Lcom/nianticproject/ingress/curation/c;

    const-string/jumbo v1, "VIA_SYNC"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/curation/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/curation/c;->b:Lcom/nianticproject/ingress/curation/c;

    .line 56
    new-instance v0, Lcom/nianticproject/ingress/curation/c;

    const-string/jumbo v1, "USER_INTERACTION_NEEDED"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/curation/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/curation/c;->c:Lcom/nianticproject/ingress/curation/c;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/curation/c;

    sget-object v1, Lcom/nianticproject/ingress/curation/c;->a:Lcom/nianticproject/ingress/curation/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/curation/c;->b:Lcom/nianticproject/ingress/curation/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/curation/c;->c:Lcom/nianticproject/ingress/curation/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/curation/c;->d:[Lcom/nianticproject/ingress/curation/c;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/curation/c;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/nianticproject/ingress/curation/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/curation/c;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/curation/c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/nianticproject/ingress/curation/c;->d:[Lcom/nianticproject/ingress/curation/c;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/curation/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/curation/c;

    return-object v0
.end method
