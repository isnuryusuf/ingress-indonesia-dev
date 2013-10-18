.class final enum Lcom/nianticproject/ingress/common/inventory/ui/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/inventory/ui/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

.field public static final enum b:Lcom/nianticproject/ingress/common/inventory/ui/aj;

.field public static final enum c:Lcom/nianticproject/ingress/common/inventory/ui/aj;

.field private static final synthetic e:[Lcom/nianticproject/ingress/common/inventory/ui/aj;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;

    const-string/jumbo v1, "DISTANCE"

    const-string/jumbo v2, "by Distance"

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/common/inventory/ui/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    .line 133
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;

    const-string/jumbo v1, "ALPHABETICAL"

    const-string/jumbo v2, "by Title"

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/common/inventory/ui/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->b:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    .line 134
    new-instance v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;

    const-string/jumbo v1, "RECENCY"

    const-string/jumbo v2, "by Date"

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/common/inventory/ui/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->c:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/inventory/ui/aj;

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/aj;->a:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/aj;->b:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/aj;->c:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->e:[Lcom/nianticproject/ingress/common/inventory/ui/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-object p3, p0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->d:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/inventory/ui/aj;
    .locals 1
    .parameter

    .prologue
    .line 131
    const-class v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/inventory/ui/aj;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/nianticproject/ingress/common/inventory/ui/aj;->e:[Lcom/nianticproject/ingress/common/inventory/ui/aj;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/inventory/ui/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/inventory/ui/aj;

    return-object v0
.end method
