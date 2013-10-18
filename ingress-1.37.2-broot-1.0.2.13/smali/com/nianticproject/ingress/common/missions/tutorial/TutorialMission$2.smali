.class Lcom/nianticproject/ingress/common/missions/tutorial/TutorialMission$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/ImageByBytes;


# instance fields
.field final synthetic this$0:Lcom/nianticproject/ingress/common/missions/tutorial/x;

.field final synthetic val$photoBytes:Lcom/google/a/a/aj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;Lcom/google/a/a/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialMission$2;->this$0:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialMission$2;->val$photoBytes:Lcom/google/a/a/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageBytes()[B
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialMission$2;->val$photoBytes:Lcom/google/a/a/aj;

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
