.class public final enum Lcom/nianticproject/ingress/gameentity/components/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/gameentity/components/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/gameentity/components/c;

.field public static final enum b:Lcom/nianticproject/ingress/gameentity/components/c;

.field private static final synthetic f:[Lcom/nianticproject/ingress/gameentity/components/c;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/c;

    const-string/jumbo v1, "ADA"

    const-string/jumbo v3, "ADA Refactor"

    const-string/jumbo v4, "The ADA Refactor can be used to reverse the alignment of an Enlightened Portal."

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/gameentity/components/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/c;->a:Lcom/nianticproject/ingress/gameentity/components/c;

    .line 21
    new-instance v3, Lcom/nianticproject/ingress/gameentity/components/c;

    const-string/jumbo v4, "JARVIS"

    const-string/jumbo v6, "JARVIS Virus"

    const-string/jumbo v7, "The JARVIS Virus can be used to reverse the alignment of a Resistance Portal."

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/gameentity/components/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/nianticproject/ingress/gameentity/components/c;->b:Lcom/nianticproject/ingress/gameentity/components/c;

    .line 18
    new-array v0, v8, [Lcom/nianticproject/ingress/gameentity/components/c;

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/c;->a:Lcom/nianticproject/ingress/gameentity/components/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/c;->b:Lcom/nianticproject/ingress/gameentity/components/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/c;->f:[Lcom/nianticproject/ingress/gameentity/components/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/nianticproject/ingress/gameentity/components/c;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/nianticproject/ingress/gameentity/components/c;->d:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/nianticproject/ingress/gameentity/components/c;->e:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/c;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/c;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/gameentity/components/c;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/c;->f:[Lcom/nianticproject/ingress/gameentity/components/c;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/gameentity/components/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/gameentity/components/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/c;->e:I

    return v0
.end method
